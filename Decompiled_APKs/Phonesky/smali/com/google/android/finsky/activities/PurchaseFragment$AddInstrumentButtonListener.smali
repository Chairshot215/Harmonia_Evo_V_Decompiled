.class Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddInstrumentButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "No add instrument item selected."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$AddInstrumentButtonListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mSelectedEligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$400(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$500(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 179
    return-void
.end method
