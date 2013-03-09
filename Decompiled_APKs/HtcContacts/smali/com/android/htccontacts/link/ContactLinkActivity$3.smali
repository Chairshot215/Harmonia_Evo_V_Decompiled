.class Lcom/android/htccontacts/link/ContactLinkActivity$3;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$3;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$3;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->shouldShowPhotoOption()Z
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$200(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$3;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->showPhotoPickerDialog()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$300(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 468
    :cond_0
    return-void
.end method
