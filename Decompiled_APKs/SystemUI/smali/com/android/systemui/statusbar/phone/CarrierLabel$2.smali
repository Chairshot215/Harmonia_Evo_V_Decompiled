.class Lcom/android/systemui/statusbar/phone/CarrierLabel$2;
.super Ljava/lang/Object;
.source "CarrierLabel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v3, 0x3e8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mServiceStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCdmaSearchingString:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mCdmaSearchingString:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmnLabel:Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingString:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/widget/HtcBlinkingTextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKSearchingHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$600(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mNWKRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSearchingIdx:I

    goto :goto_0
.end method
