.class Lcom/android/phone/nbpcd/AssistedDialingSetting$4;
.super Ljava/lang/Object;
.source "AssistedDialingSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/AssistedDialingSetting;->prepareUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 556
    if-eqz p2, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "EnableAssistedDialing"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 561
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    invoke-static {v3}, Lcom/android/phone/HtcNBPCDUtil;->setAssistedDialingEnbale(Z)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "EnableAssistedDialing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 570
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$4;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    invoke-static {v2}, Lcom/android/phone/HtcNBPCDUtil;->setAssistedDialingEnbale(Z)V

    goto :goto_0
.end method
