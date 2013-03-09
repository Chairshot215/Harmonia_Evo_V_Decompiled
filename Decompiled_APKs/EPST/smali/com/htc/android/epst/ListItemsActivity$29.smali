.class Lcom/htc/android/epst/ListItemsActivity$29;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->makeEditingOptionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$29;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1980
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/SettingItem;->setValue(Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$29;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #calls: Lcom/htc/android/epst/ListItemsActivity;->showProgress()V
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$600(Lcom/htc/android/epst/ListItemsActivity;)V

    .line 1983
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$29;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$29;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/android/epst/SettingValueUpdater;->setSettingValue(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)V

    .line 1985
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$29;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/ListItemsActivity;->finishEditItem()V

    .line 1986
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1987
    return-void
.end method
