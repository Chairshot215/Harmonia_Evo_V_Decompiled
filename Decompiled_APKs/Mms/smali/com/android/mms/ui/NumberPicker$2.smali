.class Lcom/android/mms/ui/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mIncrement:Z
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$100(Lcom/android/mms/ui/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$300(Lcom/android/mms/ui/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$200(Lcom/android/mms/ui/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDecrement:Z
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$400(Lcom/android/mms/ui/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$100(Lcom/android/mms/ui/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$300(Lcom/android/mms/ui/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mSpeed:J
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$200(Lcom/android/mms/ui/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$2;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$100(Lcom/android/mms/ui/NumberPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method
