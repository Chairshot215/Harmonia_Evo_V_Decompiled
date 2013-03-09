.class public Lcom/android/calculator2/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# static fields
.field private static final PREF_INPUT:Ljava/lang/String; = "input"

.field private static final PREF_NAME:Ljava/lang/String; = "com.android.calculator2_preferences"

.field private static final PREF_RESULT:Ljava/lang/String; = "result"

.field private static final PREF_SELECTION:Ljava/lang/String; = "selection"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/android/calculator2/PreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/PreferenceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "com.android.calculator2_preferences"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method


# virtual methods
.method public getInput()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "input"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "result"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelection()I
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "selection"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "input"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public setInputAndSelection(Ljava/lang/String;I)V
    .locals 2
    .parameter "input"
    .parameter "selection"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "input"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    const-string v1, "selection"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 22
    iget-object v1, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "result"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "selection"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/calculator2/PreferenceManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "selection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
