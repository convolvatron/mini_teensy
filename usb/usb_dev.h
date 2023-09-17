

typedef struct transfer_struct transfer_t;
struct transfer_struct {
        uint32_t next;
        volatile uint32_t status;
        uint32_t pointer0;
        uint32_t pointer1;
        uint32_t pointer2;
        uint32_t pointer3;
        uint32_t pointer4;
        uint32_t callback_param;
};
