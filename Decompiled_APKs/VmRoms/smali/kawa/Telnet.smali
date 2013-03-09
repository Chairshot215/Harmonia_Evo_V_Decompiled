.class public Lkawa/Telnet;
.super Ljava/lang/Object;
.source "Telnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final ECHO:I = 0x1

.field static final EOF:I = 0xec

.field static final IAC:I = 0xff

.field static final IP:I = 0xf4

.field static final LINEMODE:I = 0x22

.field static final NAWS:I = 0x1f

.field static final NOP:I = 0xf1

.field static final OPTION_NO:I = 0x0

.field static final OPTION_WANTNO:I = 0x1

.field static final OPTION_WANTNO_OPPOSITE:I = 0x2

.field static final OPTION_WANTYES:I = 0x3

.field static final OPTION_WANTYES_OPPOSITE:I = 0x4

.field static final OPTION_YES:I = 0x5

.field static final SB:I = 0xfa

.field static final SE:I = 0xf0

.field public static final SUPPRESS_GO_AHEAD:I = 0x3

.field static final TM:I = 0x6

.field static final TTYPE:I = 0x18

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc


# instance fields
.field in:Lkawa/TelnetInputStream;

.field isServer:Z

.field final optionsState:[B

.field out:Lkawa/TelnetOutputStream;

.field final preferredLineMode:B

.field sin:Ljava/io/InputStream;

.field sout:Ljava/io/OutputStream;

.field public terminalType:[B

.field public windowHeight:S

.field public windowWidth:S


# direct methods
.method public constructor <init>(Ljava/net/Socket;Z)V
    .locals 2
    .parameter "socket"
    .parameter "isServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x3

    iput-byte v0, p0, Lkawa/Telnet;->preferredLineMode:B

    .line 99
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lkawa/Telnet;->optionsState:[B

    .line 412
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    .line 413
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    .line 414
    new-instance v0, Lkawa/TelnetOutputStream;

    iget-object v1, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lkawa/TelnetOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    .line 415
    new-instance v0, Lkawa/TelnetInputStream;

    iget-object v1, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    invoke-direct {v0, v1, p0}, Lkawa/TelnetInputStream;-><init>(Ljava/io/InputStream;Lkawa/Telnet;)V

    iput-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    .line 416
    iput-boolean p2, p0, Lkawa/Telnet;->isServer:Z

    .line 417
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .parameter "args"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 367
    array-length v10, p0

    if-nez v10, :cond_0

    .line 368
    invoke-static {}, Lkawa/Telnet;->usage()V

    .line 369
    :cond_0
    aget-object v4, p0, v11

    .line 370
    .local v4, host:Ljava/lang/String;
    const/16 v5, 0x17

    .line 371
    .local v5, port:I
    array-length v10, p0

    if-le v10, v12, :cond_1

    .line 373
    aget-object v10, p0, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 377
    :cond_1
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 378
    .local v6, socket:Ljava/net/Socket;
    new-instance v8, Lkawa/Telnet;

    const/4 v10, 0x0

    invoke-direct {v8, v6, v10}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 379
    .local v8, telnet:Lkawa/Telnet;
    invoke-virtual {v8}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v9

    .line 380
    .local v9, tout:Lkawa/TelnetOutputStream;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    .local v7, t:Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getPriority()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 383
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 385
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 388
    .local v1, buffer:[B
    :goto_0
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 389
    .local v2, ch:I
    if-gez v2, :cond_2

    .line 401
    invoke-virtual {v7}, Ljava/lang/Thread;->stop()V

    .line 407
    .end local v1           #buffer:[B
    .end local v2           #ch:I
    .end local v6           #socket:Ljava/net/Socket;
    .end local v7           #t:Ljava/lang/Thread;
    .end local v8           #telnet:Lkawa/Telnet;
    .end local v9           #tout:Lkawa/TelnetOutputStream;
    :goto_1
    return-void

    .line 391
    .restart local v1       #buffer:[B
    .restart local v2       #ch:I
    .restart local v6       #socket:Ljava/net/Socket;
    .restart local v7       #t:Ljava/lang/Thread;
    .restart local v8       #telnet:Lkawa/Telnet;
    .restart local v9       #tout:Lkawa/TelnetOutputStream;
    :cond_2
    const/4 v10, 0x0

    int-to-byte v11, v2

    aput-byte v11, v1, v10

    .line 392
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 393
    .local v0, avail:I
    if-lez v0, :cond_4

    .line 395
    array-length v10, v1

    sub-int/2addr v10, v12

    if-le v0, v10, :cond_3

    .line 396
    array-length v10, v1

    sub-int v0, v10, v12

    .line 397
    :cond_3
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v11, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 399
    :cond_4
    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v1, v10, v11}, Lkawa/TelnetOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    .end local v0           #avail:I
    .end local v1           #buffer:[B
    .end local v2           #ch:I
    .end local v6           #socket:Ljava/net/Socket;
    .end local v7           #t:Ljava/lang/Thread;
    .end local v8           #telnet:Lkawa/Telnet;
    .end local v9           #tout:Lkawa/TelnetOutputStream;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 405
    .local v3, ex:Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static usage()V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:  [java] kawa.Telnet HOST [PORT#]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 363
    return-void
.end method


# virtual methods
.method change(II)Z
    .locals 6
    .parameter "command"
    .parameter "option"

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0xfb

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 135
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    move v1, v3

    .line 175
    :goto_0
    return v1

    .line 137
    :cond_0
    iget-boolean v1, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1f

    if-ne p2, v1, :cond_1

    move v1, v3

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    iget-boolean v1, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v1, :cond_2

    if-ne p1, v4, :cond_2

    if-ne p2, v5, :cond_2

    .line 141
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 142
    .local v0, buf:[B
    aput-byte v3, v0, v2

    .line 143
    const/4 v1, 0x3

    aput-byte v1, v0, v3

    .line 146
    :try_start_0
    iget-object v1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, v0}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v1, v3

    .line 152
    goto :goto_0

    .line 154
    .end local v0           #buf:[B
    :cond_2
    iget-boolean v1, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v1, :cond_3

    if-ne p1, v4, :cond_3

    const/16 v1, 0x18

    if-ne p2, v1, :cond_3

    .line 156
    new-array v0, v3, [B

    .line 157
    .restart local v0       #buf:[B
    aput-byte v3, v0, v2

    .line 160
    :try_start_1
    iget-object v1, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v1, p2, v0}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move v1, v3

    .line 166
    goto :goto_0

    .line 168
    .end local v0           #buf:[B
    :cond_3
    iget-boolean v1, p0, Lkawa/Telnet;->isServer:Z

    if-nez v1, :cond_5

    if-ne p2, v3, :cond_5

    .line 170
    const/16 v1, 0xfd

    if-ne p1, v1, :cond_4

    move v1, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    if-ne p1, v4, :cond_5

    move v1, v3

    .line 173
    goto :goto_0

    :cond_5
    move v1, v2

    .line 175
    goto :goto_0

    .line 162
    .restart local v0       #buf:[B
    :catch_0
    move-exception v1

    goto :goto_2

    .line 148
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getInputStream()Lkawa/TelnetInputStream;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    return-object v0
.end method

.method public getOutputStream()Lkawa/TelnetOutputStream;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    return-object v0
.end method

.method handle(II)V
    .locals 9
    .parameter "command"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xfe

    const/16 v5, 0xfd

    const/16 v4, 0xfc

    .line 225
    if-ge p1, v5, :cond_2

    move v0, v8

    .line 228
    .local v0, otherSide:Z
    :goto_0
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    move v2, v8

    .line 229
    .local v2, wantOn:Z
    :goto_1
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v1, v3, p2

    .line 231
    .local v1, state:B
    if-eqz v0, :cond_0

    .line 232
    shr-int/lit8 v3, v1, 0x3

    int-to-byte v1, v3

    .line 233
    :cond_0
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 290
    :goto_2
    if-eqz v0, :cond_c

    .line 291
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xc7

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    int-to-byte v1, v3

    .line 294
    :goto_3
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte v1, v3, p2

    .line 295
    :cond_1
    return-void

    .end local v0           #otherSide:Z
    .end local v1           #state:B
    .end local v2           #wantOn:Z
    :cond_2
    move v0, v7

    .line 225
    goto :goto_0

    .restart local v0       #otherSide:Z
    :cond_3
    move v2, v7

    .line 228
    goto :goto_1

    .line 236
    .restart local v1       #state:B
    .restart local v2       #wantOn:Z
    :pswitch_0
    if-nez v2, :cond_1

    .line 239
    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    .line 241
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_4

    move v4, v6

    :cond_4
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 244
    :pswitch_1
    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    const/4 v1, 0x5

    .line 249
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    :cond_5
    const/16 v4, 0xfb

    goto :goto_4

    .line 253
    :cond_6
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_7

    move v4, v6

    :cond_7
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 258
    :pswitch_2
    const/4 v1, 0x0

    .line 259
    goto :goto_2

    .line 265
    :pswitch_3
    const/4 v1, 0x3

    .line 266
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_8

    move v4, v5

    :goto_5
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    :cond_8
    const/16 v4, 0xfb

    goto :goto_5

    .line 270
    :pswitch_4
    if-eqz v2, :cond_9

    .line 272
    const/4 v1, 0x5

    .line 273
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    goto :goto_2

    .line 276
    :cond_9
    const/4 v1, 0x0

    .line 277
    goto :goto_2

    .line 279
    :pswitch_5
    if-eqz v2, :cond_b

    .line 281
    const/4 v1, 0x1

    .line 282
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_a

    move v4, v6

    :cond_a
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 286
    :cond_b
    const/4 v1, 0x0

    goto :goto_2

    .line 293
    :cond_c
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xf8

    or-int/2addr v3, v1

    int-to-byte v1, v3

    goto :goto_3

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public request(II)V
    .locals 6
    .parameter "command"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    const/16 v3, 0xfd

    if-lt p1, v3, :cond_2

    move v0, v5

    .line 307
    .local v0, otherSide:Z
    :goto_0
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    move v2, v5

    .line 309
    .local v2, wantOn:Z
    :goto_1
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v1, v3, p2

    .line 310
    .local v1, state:B
    if-eqz v0, :cond_0

    .line 311
    shr-int/lit8 v3, v1, 0x3

    int-to-byte v1, v3

    .line 313
    :cond_0
    and-int/lit8 v3, v1, 0x7

    packed-switch v3, :pswitch_data_0

    .line 352
    :cond_1
    :goto_2
    if-eqz v0, :cond_5

    .line 353
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xc7

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    int-to-byte v1, v3

    .line 356
    :goto_3
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte v1, v3, p2

    .line 357
    return-void

    .end local v0           #otherSide:Z
    .end local v1           #state:B
    .end local v2           #wantOn:Z
    :cond_2
    move v0, v4

    .line 304
    goto :goto_0

    .restart local v0       #otherSide:Z
    :cond_3
    move v2, v4

    .line 307
    goto :goto_1

    .line 316
    .restart local v1       #state:B
    .restart local v2       #wantOn:Z
    :pswitch_0
    if-eqz v2, :cond_1

    .line 318
    const/4 v1, 0x3

    .line 319
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v3, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 324
    :pswitch_1
    if-nez v2, :cond_1

    .line 326
    const/4 v1, 0x1

    .line 327
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v3, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_2

    .line 332
    :pswitch_2
    if-eqz v2, :cond_1

    .line 333
    const/4 v1, 0x2

    goto :goto_2

    .line 337
    :pswitch_3
    if-nez v2, :cond_1

    .line 338
    const/4 v1, 0x1

    goto :goto_2

    .line 342
    :pswitch_4
    if-nez v2, :cond_4

    .line 343
    const/4 v1, 0x4

    .line 346
    :cond_4
    :pswitch_5
    if-eqz v2, :cond_1

    .line 347
    const/4 v1, 0x3

    goto :goto_2

    .line 355
    :cond_5
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xf8

    or-int/2addr v3, v1

    int-to-byte v1, v3

    goto :goto_3

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v4

    .line 424
    .local v4, tin:Lkawa/TelnetInputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 427
    .local v1, buffer:[B
    :goto_0
    invoke-virtual {v4}, Lkawa/TelnetInputStream;->read()I

    move-result v2

    .line 428
    .local v2, ch:I
    if-gez v2, :cond_0

    .line 446
    .end local v1           #buffer:[B
    .end local v2           #ch:I
    .end local v4           #tin:Lkawa/TelnetInputStream;
    :goto_1
    return-void

    .line 430
    .restart local v1       #buffer:[B
    .restart local v2       #ch:I
    .restart local v4       #tin:Lkawa/TelnetInputStream;
    :cond_0
    const/4 v5, 0x0

    int-to-byte v6, v2

    aput-byte v6, v1, v5

    .line 431
    invoke-virtual {v4}, Lkawa/TelnetInputStream;->available()I

    move-result v0

    .line 432
    .local v0, avail:I
    if-lez v0, :cond_2

    .line 434
    array-length v5, v1

    sub-int/2addr v5, v8

    if-le v0, v5, :cond_1

    .line 435
    array-length v5, v1

    sub-int v0, v5, v8

    .line 436
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5, v0}, Lkawa/TelnetInputStream;->read([BII)I

    move-result v0

    .line 438
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v1, v6, v7}, Ljava/io/PrintStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v0           #avail:I
    .end local v1           #buffer:[B
    .end local v2           #ch:I
    .end local v4           #tin:Lkawa/TelnetInputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 443
    .local v3, ex:Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 444
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method public subCommand([BII)V
    .locals 8
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 182
    aget-byte v0, p1, p2

    .line 183
    .local v0, command:I
    sparse-switch v0, :sswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 186
    :sswitch_0
    const/4 v3, 0x5

    if-ne p3, v3, :cond_0

    .line 188
    aget-byte v3, p1, v6

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Lkawa/Telnet;->windowWidth:S

    .line 189
    aget-byte v3, p1, v7

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Lkawa/Telnet;->windowHeight:S

    goto :goto_0

    .line 198
    :sswitch_1
    sub-int v3, p3, v6

    new-array v2, v3, [B

    .line 199
    .local v2, type:[B
    const/4 v3, 0x0

    sub-int v4, p3, v6

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object v2, p0, Lkawa/Telnet;->terminalType:[B

    .line 201
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "terminal type: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v2           #type:[B
    :sswitch_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBCommand LINEMODE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    aget-byte v3, p1, v6

    if-ne v3, v7, :cond_0

    .line 208
    const/4 v1, 0x2

    .local v1, i:I
    :goto_1
    add-int/lit8 v3, v1, 0x2

    if-ge v3, p3, :cond_0

    .line 210
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x1f -> :sswitch_0
        0x22 -> :sswitch_2
    .end sparse-switch
.end method
