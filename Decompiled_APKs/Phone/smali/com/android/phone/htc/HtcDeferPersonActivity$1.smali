.class Lcom/android/phone/htc/HtcDeferPersonActivity$1;
.super Ljava/lang/Object;
.source "HtcDeferPersonActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/htc/HtcDeferPersonActivity;->createPhonesDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/htc/HtcDeferPersonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$1;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$1;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    iget-object v2, v2, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 344
    .local v1, phoneSize:I
    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$1;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    iget-object v2, v2, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;

    .line 347
    .local v0, phone:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    if-eqz v0, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$1;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    iget-object v2, v2, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v0, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 349
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$1;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    iget-object v2, v2, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v0, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->type:I

    iput v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    .line 350
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity$1;->this$0:Lcom/android/phone/htc/HtcDeferPersonActivity;

    invoke-virtual {v2}, Lcom/android/phone/htc/HtcDeferPersonActivity;->updateNumberView()V

    .line 353
    .end local v0           #phone:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    :cond_0
    return-void
.end method
