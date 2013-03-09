.class public Lcom/android/phone/nbpcd/VZWConvSetting;
.super Landroid/app/Activity;
.source "VZWConvSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VZWConvSetting"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private prepareUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 73
    const v3, 0x7f0800fd

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/VZWConvSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, btn_done:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 75
    new-instance v3, Lcom/android/phone/nbpcd/VZWConvSetting$1;

    invoke-direct {v3, p0}, Lcom/android/phone/nbpcd/VZWConvSetting$1;-><init>(Lcom/android/phone/nbpcd/VZWConvSetting;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    const v3, 0x7f0800fc

    invoke-virtual {p0, v3}, Lcom/android/phone/nbpcd/VZWConvSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 85
    .local v1, cboxVZWConversion:Landroid/widget/CheckBox;
    if-eqz v1, :cond_1

    .line 86
    new-instance v3, Lcom/android/phone/nbpcd/VZWConvSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/nbpcd/VZWConvSetting$2;-><init>(Lcom/android/phone/nbpcd/VZWConvSetting;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/phone/nbpcd/VZWConvSetting;->settings:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/phone/nbpcd/VZWConvSetting;->settings:Landroid/content/SharedPreferences;

    const-string v4, "EnableVZWConversion"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 115
    .local v2, mbIsCheck:Z
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 119
    .end local v2           #mbIsCheck:Z
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "VZWConversionSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/nbpcd/VZWConvSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting;->settings:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting;->editor:Landroid/content/SharedPreferences$Editor;

    .line 68
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/android/phone/nbpcd/VZWConvSetting;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/android/phone/nbpcd/VZWConvSetting;->prepareUI()V

    .line 70
    return-void
.end method
