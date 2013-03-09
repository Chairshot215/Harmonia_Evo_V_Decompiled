.class Lcom/android/phone/prefernetwork/OperatorSelectActivity$1;
.super Ljava/lang/Object;
.source "OperatorSelectActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


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
    .line 276
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$1;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/phone/prefernetwork/OperatorSelectActivity$1;->this$0:Lcom/android/phone/prefernetwork/OperatorSelectActivity;

    #calls: Lcom/android/phone/prefernetwork/OperatorSelectActivity;->handleClick(I)V
    invoke-static {v0, p3}, Lcom/android/phone/prefernetwork/OperatorSelectActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorSelectActivity;I)V

    .line 279
    return-void
.end method
