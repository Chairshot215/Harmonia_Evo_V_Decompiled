.class Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/util/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizeAppInfo"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field priority:I

.field widgetName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/util/Utilities$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/htc/home/personalize/util/Utilities$CustomizeAppInfo;-><init>()V

    return-void
.end method
