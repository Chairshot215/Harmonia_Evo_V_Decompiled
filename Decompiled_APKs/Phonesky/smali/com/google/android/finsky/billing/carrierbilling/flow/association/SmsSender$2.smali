.class final Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$2;
.super Ljava/lang/Object;
.source "SmsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->dispatch(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$2;->val$result:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->access$100()Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$2;->val$result:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;->onResult(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V

    .line 92
    return-void
.end method
