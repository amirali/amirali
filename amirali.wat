(module
    (import "wasi_unstable" "fd_write" (func $wasi_fd_write (param i32 i32 i32 i32) (result i32)))
    (import "wasi_unstable" "proc_exit" (func $wasi_proc_exit (param i32)))

    (memory (export "memory") 1)

    (data (i32.const 8)
        "\10\00\00\00"
        "\ff\00\00\00"
    )

    (data (i32.const 16) "Amirali Esfandiari\n\nYoung backend developer & Even younger SRE\n\nEmail: amiralinull@gmail.com\nWebsite: amirali.dev\nGithub: github.com/amirali\nLiknedin: linkedin.com/in/amirali-esfandiari\nTwitter: twitter.com/eilarima\n")

    (func $main (export "_start")
        (call $wasi_fd_write
            (i32.const 1)
            (i32.const 8)
            (i32.const 1)
            (i32.const 12)
        )

        (call $wasi_proc_exit)
    )
)
