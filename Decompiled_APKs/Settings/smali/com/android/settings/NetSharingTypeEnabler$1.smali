.class Lcom/android/settings/NetSharingTypeEnabler$1;
.super Ljava/lang/Object;
.source "NetSharingTypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetSharingTypeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetSharingTypeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/NetSharingTypeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/NetSharingTypeEnabler$1;->this$0:Lcom/android/settings/NetSharingTypeEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "type_choose"

    .prologue
    .line 61
    const-string v0, "NetSharingTypeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler$1;->this$0:Lcom/android/settings/NetSharingTypeEnabler;

    #getter for: Lcom/android/settings/NetSharingTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/NetSharingTypeEnabler;->access$000(Lcom/android/settings/NetSharingTypeEnabler;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_type"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler$1;->this$0:Lcom/android/settings/NetSharingTypeEnabler;

    #getter for: Lcom/android/settings/NetSharingTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/NetSharingTypeEnabler;->access$000(Lcom/android/settings/NetSharingTypeEnabler;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler$1;->this$0:Lcom/android/settings/NetSharingTypeEnabler;

    #getter for: Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/settings/NetSharingTypeEnabler;->access$100(Lcom/android/settings/NetSharingTypeEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 65
    invoke-static {}, Lcom/android/settings/NetSharingTypeEnabler;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/NetSharingTypeEnabler;->checkInterface(Landroid/content/Context;)V

    .line 66
    return-void
.end method
