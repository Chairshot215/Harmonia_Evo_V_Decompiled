.class Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$3;
.super Ljava/lang/Object;
.source "ConfigUpdatesAndEventsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$3;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 363
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 364
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$3;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->access$100(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$3;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->access$100(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    move-result-object v0

    sget v1, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_DAY_SELECT:I

    invoke-virtual {v0, v1, p2}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->doOnItemClicked(II)V

    .line 368
    :cond_0
    return-void
.end method
