.class Lcom/google/android/gm/LabelSettingsFragment$Pair;
.super Ljava/lang/Object;
.source "LabelSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pair"
.end annotation


# instance fields
.field public key:I

.field final synthetic this$0:Lcom/google/android/gm/LabelSettingsFragment;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/LabelSettingsFragment;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput p2, p0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    .line 348
    iput-object p3, p0, Lcom/google/android/gm/LabelSettingsFragment$Pair;->value:Ljava/lang/String;

    .line 349
    return-void
.end method
