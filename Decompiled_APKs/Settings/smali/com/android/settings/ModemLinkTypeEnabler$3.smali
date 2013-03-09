.class Lcom/android/settings/ModemLinkTypeEnabler$3;
.super Ljava/lang/Object;
.source "ModemLinkTypeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModemLinkTypeEnabler;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemLinkTypeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ModemLinkTypeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$100(Lcom/android/settings/ModemLinkTypeEnabler;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modemlink_type"

    iget-object v2, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v2}, Lcom/android/settings/ModemLinkTypeEnabler;->access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$100(Lcom/android/settings/ModemLinkTypeEnabler;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    const-string v0, "ModemLinkType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc connection type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v2}, Lcom/android/settings/ModemLinkTypeEnabler;->access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #calls: Lcom/android/settings/ModemLinkTypeEnabler;->checkInterface()V
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$200(Lcom/android/settings/ModemLinkTypeEnabler;)V

    .line 105
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-static {}, Lcom/android/settings/ModemLinkTypeEnabler;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ModemLinkEnabler;->Check_Type(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->Switch_Connection_Type(I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$100(Lcom/android/settings/ModemLinkTypeEnabler;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modemlink_type"

    iget-object v2, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v2}, Lcom/android/settings/ModemLinkTypeEnabler;->access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$100(Lcom/android/settings/ModemLinkTypeEnabler;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    const-string v0, "ModemLinkType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roll back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v2}, Lcom/android/settings/ModemLinkTypeEnabler;->access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #calls: Lcom/android/settings/ModemLinkTypeEnabler;->checkInterface()V
    invoke-static {v0}, Lcom/android/settings/ModemLinkTypeEnabler;->access$200(Lcom/android/settings/ModemLinkTypeEnabler;)V

    .line 113
    invoke-static {}, Lcom/android/settings/ModemLinkTypeEnabler;->access$300()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ModemLinkTypeEnabler$3;->this$0:Lcom/android/settings/ModemLinkTypeEnabler;

    #getter for: Lcom/android/settings/ModemLinkTypeEnabler;->type_choose:I
    invoke-static {v1}, Lcom/android/settings/ModemLinkTypeEnabler;->access$000(Lcom/android/settings/ModemLinkTypeEnabler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkEnabler;->ShowConnectionDialog(Landroid/content/Context;I)V

    goto :goto_0
.end method
