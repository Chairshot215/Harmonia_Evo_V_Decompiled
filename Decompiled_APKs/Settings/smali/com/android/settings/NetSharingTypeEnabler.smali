.class public Lcom/android/settings/NetSharingTypeEnabler;
.super Ljava/lang/Object;
.source "NetSharingTypeEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field protected static final SP_FILE:Ljava/lang/String; = "internet_sharing"

.field protected static final SP_KEY:Ljava/lang/String; = "is_type"

.field protected static final SP_MAC:Ljava/lang/String; = "mac"

.field protected static final SP_TYPE:Ljava/lang/String; = "net.usb0.isharing.host"

.field protected static final SP_WINDOW:Ljava/lang/String; = "win"

.field private static final TAG:Ljava/lang/String; = "NetSharingTypeEnabler"

.field public static Type:I

.field private static mContext:Landroid/content/Context;

.field protected static mToggleISType:Lcom/htc/preference/HtcPreference;


# instance fields
.field public click_listener:Landroid/content/DialogInterface$OnClickListener;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcPreference;)V
    .locals 3
    .parameter "context"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 58
    new-instance v0, Lcom/android/settings/NetSharingTypeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NetSharingTypeEnabler$1;-><init>(Lcom/android/settings/NetSharingTypeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->click_listener:Landroid/content/DialogInterface$OnClickListener;

    .line 36
    const-string v0, "NetSharingTypeEnabler"

    const-string v1, "NetSharingTypeEnabler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sput-object p2, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    .line 38
    sput-object p1, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    .line 40
    const-string v0, "internet_sharing"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    .line 41
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v1, "is_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    .line 42
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    .line 43
    return-void
.end method

.method public static Set_Connection_Type(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 88
    const-string v2, "internet_sharing"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NetSharingTypeEnabler;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NetSharingTypeEnabler;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static checkInterface(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 100
    const-string v0, "internet_sharing"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    .line 102
    sget v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c0321

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 105
    :cond_0
    const-string v0, "net.usb0.isharing.host"

    const-string v1, "win"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c0328

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 109
    :cond_2
    const-string v0, "net.usb0.isharing.host"

    const-string v1, "mac"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 70
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    sget-object v1, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c031f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0321

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0328

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    iget-object v3, p0, Lcom/android/settings/NetSharingTypeEnabler;->click_listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0314

    new-instance v2, Lcom/android/settings/NetSharingTypeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/NetSharingTypeEnabler$2;-><init>(Lcom/android/settings/NetSharingTypeEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 77
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 78
    return v5
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 55
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 47
    sget-object v2, Lcom/android/settings/NetSharingTypeEnabler;->mToggleISType:Lcom/htc/preference/HtcPreference;

    sget-boolean v0, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/NetSharingTypeEnabler;->sp:Landroid/content/SharedPreferences;

    const-string v2, "is_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    .line 49
    const-string v0, "NetSharingTypeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc connection type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/NetSharingTypeEnabler;->Type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/android/settings/NetSharingTypeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/NetSharingTypeEnabler;->checkInterface(Landroid/content/Context;)V

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method
