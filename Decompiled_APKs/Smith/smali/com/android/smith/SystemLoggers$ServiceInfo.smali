.class Lcom/android/smith/SystemLoggers$ServiceInfo;
.super Ljava/lang/Object;
.source "SystemLoggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SystemLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceInfo"
.end annotation


# instance fields
.field public autoclear:Z

.field public compress:Z

.field public filepath:Ljava/lang/String;

.field public loggers:[Ljava/lang/String;

.field public mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mFileName:Landroid/widget/TextView;

.field private mLayout:Landroid/widget/LinearLayout;

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field private prompt:Ljava/lang/String;

.field private request:I

.field public rotate:I

.field public running:Z

.field public session:I

.field public size:I

.field public size_limit:I

.field public size_reserved:I

.field final synthetic this$0:Lcom/android/smith/SystemLoggers;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "service_name"
    .parameter "prompt_text"

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/smith/SystemLoggers$ServiceInfo;-><init>(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "service_name"
    .parameter "prompt_text"
    .parameter "logger_services"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->this$0:Lcom/android/smith/SystemLoggers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->prompt:Ljava/lang/String;

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->filepath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->version:Ljava/lang/String;

    .line 207
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    .line 208
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    .line 209
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    .line 210
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    .line 211
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->session:I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->autoclear:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->compress:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    .line 215
    iput v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->request:I

    .line 216
    iput-object p4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    .line 219
    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    .line 220
    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 221
    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    .line 222
    return-void
.end method


# virtual methods
.method public applyRequest(I)Z
    .locals 5
    .parameter "req"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 368
    if-eqz p1, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-lt p1, v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v3

    .line 371
    :cond_1
    iput p1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->request:I

    .line 373
    new-instance v0, Lcom/android/smith/ClientLocalSocket;

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/smith/ClientLocalSocket;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->getLastException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 382
    const-string v1, "SM:SystemLoggers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot connect to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " service!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    goto :goto_0

    .line 387
    :cond_2
    iget v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->request:I

    packed-switch v1, :pswitch_data_0

    .line 429
    :cond_3
    :goto_1
    iput v3, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->request:I

    .line 431
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 432
    const/4 v0, 0x0

    move v3, v2

    .line 433
    goto :goto_0

    .line 390
    :pswitch_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;
    invoke-static {v1}, Lcom/android/smith/SystemLoggers;->access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    if-eqz v1, :cond_4

    .line 392
    const-string v1, ":setpath:auto"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 398
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":setparam:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":autoclear:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->autoclear:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":compress:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->compress:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 401
    const-string v1, ":run:"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->filepath:Ljava/lang/String;

    .line 402
    iput-boolean v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    goto/16 :goto_1

    .line 396
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":setpath:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    move v1, v3

    .line 399
    goto :goto_3

    :cond_6
    move v1, v3

    .line 400
    goto :goto_4

    .line 406
    :pswitch_1
    const-string v1, ":stop:"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 407
    iput-boolean v3, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    goto/16 :goto_1

    .line 411
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-eqz v1, :cond_7

    .line 413
    const-string v1, ":stop:"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 415
    :cond_7
    const-string v1, ":endserver:"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    .line 416
    iput-boolean v3, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    goto/16 :goto_1

    .line 420
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-nez v1, :cond_3

    .line 422
    const-string v1, ":clearlog:internal"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    const-string v1, ":clearlog:phone"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    const-string v1, ":clearlog:external"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public attachLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Z
    .locals 5
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 231
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    .line 235
    iput-object p2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    .line 237
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 238
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    const v2, -0x3f4000

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 241
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x4140

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4, v0}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 243
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 245
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public detachLayout()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 257
    iput-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mLayout:Landroid/widget/LinearLayout;

    .line 259
    iput-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 260
    iput-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    .line 261
    iput-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mContext:Landroid/content/Context;

    .line 262
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLogSize()J
    .locals 9

    .prologue
    .line 438
    const-wide/16 v2, 0x0

    .line 440
    .local v2, ret:J
    new-instance v1, Lcom/android/smith/ClientLocalSocket;

    iget-object v6, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6}, Lcom/android/smith/ClientLocalSocket;-><init>(Ljava/lang/String;)V

    .line 442
    .local v1, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-nez v1, :cond_0

    move-wide v4, v2

    .line 466
    .end local v2           #ret:J
    .local v4, ret:J
    :goto_0
    return-wide v4

    .line 447
    .end local v4           #ret:J
    .restart local v2       #ret:J
    :cond_0
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->getLastException()Ljava/lang/Exception;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 449
    const-string v6, "SM:SystemLoggers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " service!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->close()V

    move-wide v4, v2

    .line 451
    .end local v2           #ret:J
    .restart local v4       #ret:J
    goto :goto_0

    .line 456
    .end local v4           #ret:J
    .restart local v2       #ret:J
    :cond_1
    :try_start_0
    const-string v6, ":getlogsize:"

    invoke-virtual {v1, v6}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 463
    :goto_1
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 464
    const/4 v1, 0x0

    move-wide v4, v2

    .line 466
    .end local v2           #ret:J
    .restart local v4       #ret:J
    goto :goto_0

    .line 458
    .end local v4           #ret:J
    .restart local v2       #ret:J
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public updateInfo()Z
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/16 v8, 0x28

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 288
    new-instance v1, Lcom/android/smith/ClientLocalSocket;

    iget-object v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/smith/ClientLocalSocket;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-nez v1, :cond_0

    .line 363
    :goto_0
    return v6

    .line 295
    :cond_0
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->getLastException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 297
    const-string v4, "SM:SystemLoggers"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot connect to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " service!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->close()V

    goto :goto_0

    .line 302
    :cond_1
    const-string v4, ":getver:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->version:Ljava/lang/String;

    .line 303
    const-string v4, ":getpath:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->path:Ljava/lang/String;

    .line 304
    const-string v4, ":islogging:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    .line 305
    iget-boolean v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-eqz v4, :cond_9

    const-string v4, ":getlogfiles:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->filepath:Ljava/lang/String;

    .line 307
    const-string v4, ":autoclear:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_a

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->autoclear:Z

    .line 308
    const-string v4, ":compress:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v6, v5

    :cond_2
    iput-boolean v6, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->compress:Z

    .line 310
    const-string v4, ":getparam:"

    invoke-virtual {v1, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, param:Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 314
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, vals:[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 320
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_4
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :goto_5
    const/4 v4, 0x2

    :try_start_2
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 347
    :goto_6
    const/4 v4, 0x3

    :try_start_3
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 355
    :cond_3
    :goto_7
    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    if-gtz v4, :cond_4

    iput v7, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    .line 356
    :cond_4
    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    if-gtz v4, :cond_5

    iput v8, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    .line 357
    :cond_5
    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    if-gtz v4, :cond_6

    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    .line 358
    :cond_6
    iget v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    if-gtz v4, :cond_7

    iput v9, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    .line 361
    .end local v3           #vals:[Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 362
    const/4 v1, 0x0

    move v6, v5

    .line 363
    goto/16 :goto_0

    .end local v2           #param:Ljava/lang/String;
    :cond_8
    move v4, v6

    .line 304
    goto :goto_1

    .line 305
    :cond_9
    const-string v4, ""

    goto :goto_2

    :cond_a
    move v4, v6

    .line 307
    goto :goto_3

    .line 322
    .restart local v2       #param:Ljava/lang/String;
    .restart local v3       #vals:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    iput v7, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size:I

    goto :goto_4

    .line 331
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 333
    .restart local v0       #e:Ljava/lang/Exception;
    iput v8, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->rotate:I

    goto :goto_5

    .line 340
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 342
    .restart local v0       #e:Ljava/lang/Exception;
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_limit:I

    goto :goto_6

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 351
    .restart local v0       #e:Ljava/lang/Exception;
    iput v9, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->size_reserved:I

    goto :goto_7
.end method

.method public updateLayout(Z)V
    .locals 4
    .parameter "force_off"

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mFileName:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->filepath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->prompt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Ver. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 275
    if-eqz p1, :cond_3

    .line 277
    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 284
    :cond_1
    :goto_1
    return-void

    .line 269
    :cond_2
    const-string v0, "not started"

    goto :goto_0

    .line 281
    :cond_3
    iget-object v2, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/smith/SystemLoggers$ServiceInfo;->this$0:Lcom/android/smith/SystemLoggers;

    #getter for: Lcom/android/smith/SystemLoggers;->mRunning:Z
    invoke-static {v0}, Lcom/android/smith/SystemLoggers;->access$000(Lcom/android/smith/SystemLoggers;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
