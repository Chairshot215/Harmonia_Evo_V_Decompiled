.class Lcom/google/android/finsky/config/PreferenceFile$8;
.super Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/PreferenceFile;->prefixPreference(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$8;->this$0:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected valueWithKey(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile$8;->this$0:Lcom/google/android/finsky/config/PreferenceFile;

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$8;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method
