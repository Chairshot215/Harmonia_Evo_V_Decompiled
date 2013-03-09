.class Lcom/google/android/finsky/config/PreferenceFile$1;
.super Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$1;->this$0:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected read(Landroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 3
    .parameter "sp"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$1;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$1;->mKey:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$1;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method protected bridge synthetic read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/config/PreferenceFile$1;->read(Landroid/content/SharedPreferences;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Long;)V
    .locals 3
    .parameter "editor"
    .parameter "value"

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null cannot be written for <Long>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$1;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 99
    return-void
.end method

.method protected bridge synthetic write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$1;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Long;)V

    return-void
.end method
