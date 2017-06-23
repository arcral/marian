#include "marian.h"
#include "rescorer/rescorer.h"

int main(int argc, char** argv) {
  using namespace marian;

  auto options = New<Config>(argc, argv, true, false, true);
  auto task = rescorerByType(options);

  boost::timer::cpu_timer timer;
  task->run();
  LOG(info, "Total time: {}", timer.format());

  return 0;
}
