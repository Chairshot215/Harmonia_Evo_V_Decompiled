.class Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;
.super Landroid/os/Handler;
.source "QTextDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/QTextDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final CALCULATE_COUNT:I = 0xa


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/QTextDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/QTextDeleteActivity;Lcom/android/mms/ui/QTextDeleteActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;-><init>(Lcom/android/mms/ui/QTextDeleteActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 265
    iget v3, p1, Landroid/os/Message;->what:I

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 266
    .local v0, flag:Z
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 277
    :goto_1
    return-void

    .end local v0           #flag:Z
    :cond_0
    move v0, v2

    .line 265
    goto :goto_0

    .line 268
    .restart local v0       #flag:Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #setter for: Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I
    invoke-static {v3, v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$702(Lcom/android/mms/ui/QTextDeleteActivity;I)I

    .line 269
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$708(Lcom/android/mms/ui/QTextDeleteActivity;)I

    .line 269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$200(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->delStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/QTextDeleteActivity;->access$800(Lcom/android/mms/ui/QTextDeleteActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mSelectedCount:I
    invoke-static {v4}, Lcom/android/mms/ui/QTextDeleteActivity;->access$700(Lcom/android/mms/ui/QTextDeleteActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 266
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
