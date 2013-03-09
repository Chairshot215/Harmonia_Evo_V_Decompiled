.class Lcom/htc/preference/HtcListPreference$1;
.super Ljava/lang/Object;
.source "HtcListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcListPreference;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/preference/HtcListPreference$1;->this$0:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference$1;->this$0:Lcom/htc/preference/HtcListPreference;

    #setter for: Lcom/htc/preference/HtcListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/htc/preference/HtcListPreference;->access$002(Lcom/htc/preference/HtcListPreference;I)I

    .line 250
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference$1;->this$0:Lcom/htc/preference/HtcListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/preference/HtcListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void
.end method
