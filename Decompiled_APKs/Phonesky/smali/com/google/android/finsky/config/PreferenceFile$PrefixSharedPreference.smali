.class public abstract Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/config/PreferenceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrefixSharedPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference<TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->mPrefix:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->mDefaultValue:Ljava/lang/Object;

    .line 259
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 2
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->valueWithKey(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method

.method protected abstract valueWithKey(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<TT;>;"
        }
    .end annotation
.end method
