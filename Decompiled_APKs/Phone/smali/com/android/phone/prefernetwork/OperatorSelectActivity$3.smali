.class Lcom/android/phone/prefernetwork/OperatorSelectActivity$3;
.super Ljava/lang/Object;
.source "OperatorSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/OperatorSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/OperatorSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$3;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$3;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->setResult(I)V

    .line 327
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$3;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-virtual {v0}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->finish()V

    .line 328
    return-void
.end method
