.class Lcom/android/phone/nbpcd/VZWConvSetting$2;
.super Ljava/lang/Object;
.source "VZWConvSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/VZWConvSetting;->prepareUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/VZWConvSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/VZWConvSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

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

    .line 90
    if-eqz p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "EnableVZWConversion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    invoke-static {v3}, Lcom/android/phone/HtcNBPCDUtil;->setVZWConversionEnbale(Z)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "EnableVZWConversion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$2;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    iget-object v0, v0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    invoke-static {v2}, Lcom/android/phone/HtcNBPCDUtil;->setVZWConversionEnbale(Z)V

    goto :goto_0
.end method
