.class Lcom/android/htccontacts/HtcViewCompanyContactActivity$3;
.super Ljava/lang/Object;
.source "HtcViewCompanyContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewCompanyContactActivity;->createExchangeContact(Landroid/content/Context;Landroid/os/Handler;Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewCompanyContactActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$3;->this$0:Lcom/android/htccontacts/HtcViewCompanyContactActivity;

    iput-object p2, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewCompanyContactActivity$3;->val$context:Landroid/content/Context;

    const v1, 0x104039d

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 423
    return-void
.end method
