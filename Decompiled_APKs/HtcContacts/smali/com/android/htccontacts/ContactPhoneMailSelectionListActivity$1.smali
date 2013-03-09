.class Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$1;
.super Ljava/lang/Object;
.source "ContactPhoneMailSelectionListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$1;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$1;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #calls: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->doOK()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$000(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V

    .line 85
    return-void
.end method
