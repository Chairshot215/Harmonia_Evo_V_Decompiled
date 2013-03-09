.class Lcom/google/android/finsky/config/PreferenceFile$2;
.super Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$2;->this$0:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/config/PreferenceFile$2;->read(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected read(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .parameter "sp"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$2;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$2;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$2;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$2;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    return-void
.end method

.method protected write(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1
    .parameter "editor"
    .parameter "value"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$2;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    return-void
.end method
