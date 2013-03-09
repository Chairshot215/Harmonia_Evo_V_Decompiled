.class Lcom/google/android/finsky/config/PreferenceFile$4;
.super Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/config/PreferenceFile;Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$4;->this$0:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;-><init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected read(Landroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 2
    .parameter "sp"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$4;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$4;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$4;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected bridge synthetic read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/config/PreferenceFile$4;->read(Landroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V
    .locals 2
    .parameter "editor"
    .parameter "value"

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null cannot be written for <Integer>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$4;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 152
    return-void
.end method

.method protected bridge synthetic write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/config/PreferenceFile$4;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V

    return-void
.end method
