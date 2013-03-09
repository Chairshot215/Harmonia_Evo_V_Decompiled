.class Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard$RichPhoneCanvasQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnQueryComplete"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 3040
    iput-object p1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;->this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;Lcom/android/phone/CallCard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3040
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;-><init>(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;->this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    iget-object v0, v0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$1300(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;->this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    iget-object v0, v0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$1300(Lcom/android/phone/CallCard;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;->this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    #getter for: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;
    invoke-static {v0}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$1400(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3044
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;->this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    #getter for: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;
    invoke-static {v0}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$1400(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;->this$1:Lcom/android/phone/CallCard$RichPhoneCanvasQuery;

    #getter for: Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v1}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->access$1500(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;->onRichPhoneCanvasQueryComplete(Lcom/android/internal/telephony/CallerInfo;)V

    .line 3046
    :cond_0
    return-void
.end method
