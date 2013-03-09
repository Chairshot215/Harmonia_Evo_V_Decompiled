.class Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;
.super Ljava/lang/Object;
.source "SelectInstrumentFamilyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

.field final synthetic val$instruments:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->val$instruments:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    #getter for: Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->mSelectionList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->access$000(Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 150
    .local v0, index:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->val$instruments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 151
    .local v1, parceledProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    iget-object v2, p0, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$1;->this$0:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-interface {v2, v3}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog$SelectInstrumentFamilyListener;->onInstrumentFamilySelected(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 154
    return-void
.end method
