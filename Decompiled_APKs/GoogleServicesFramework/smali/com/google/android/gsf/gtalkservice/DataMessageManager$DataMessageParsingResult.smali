.class Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;
.super Ljava/lang/Object;
.source "DataMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataMessageParsingResult"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->intent:Landroid/content/Intent;

    .line 121
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$DataMessageParsingResult;->permission:Ljava/lang/String;

    .line 122
    return-void
.end method
