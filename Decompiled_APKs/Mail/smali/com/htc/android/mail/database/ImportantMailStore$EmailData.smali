.class Lcom/htc/android/mail/database/ImportantMailStore$EmailData;
.super Ljava/lang/Object;
.source "ImportantMailStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/database/ImportantMailStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmailData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public mailAddr:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/database/ImportantMailStore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/htc/android/mail/database/ImportantMailStore$EmailData;-><init>()V

    return-void
.end method
