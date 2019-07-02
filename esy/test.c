/* https://metacpan.org/pod/distribution/EV/libev/ev.pod */
#define EV_STANDALONE              /* keeps ev from requiring config.h */
#define EV_SELECT_IS_WINSOCKET 1   /* configure libev for windows select */

#include "ev.h"

int main(int arc, char *argv[])
{
    struct ev_loop *loop = ev_loop_new(EVFLAG_FORKCHECK);
    return 0;
}
