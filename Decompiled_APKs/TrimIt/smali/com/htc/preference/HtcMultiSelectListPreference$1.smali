.class Lcom/htc/preference/HtcMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "HtcMultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcMultiSelectListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcMultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 172
    if-eqz p3, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    #getter for: Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/htc/preference/HtcMultiSelectListPreference;->access$200(Lcom/htc/preference/HtcMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    #getter for: Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/htc/preference/HtcMultiSelectListPreference;->access$100(Lcom/htc/preference/HtcMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/preference/HtcMultiSelectListPreference;->access$076(Lcom/htc/preference/HtcMultiSelectListPreference;I)Z

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    #getter for: Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcom/htc/preference/HtcMultiSelectListPreference;->access$200(Lcom/htc/preference/HtcMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcMultiSelectListPreference$1;->this$0:Lcom/htc/preference/HtcMultiSelectListPreference;

    #getter for: Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/htc/preference/HtcMultiSelectListPreference;->access$100(Lcom/htc/preference/HtcMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/preference/HtcMultiSelectListPreference;->access$076(Lcom/htc/preference/HtcMultiSelectListPreference;I)Z

    goto :goto_0
.end method
