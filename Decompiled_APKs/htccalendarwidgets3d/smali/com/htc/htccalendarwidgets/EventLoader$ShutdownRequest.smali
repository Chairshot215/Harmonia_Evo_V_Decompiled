.class Lcom/htc/htccalendarwidgets/EventLoader$ShutdownRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutdownRequest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/EventLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/EventLoader$ShutdownRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/htc/htccalendarwidgets/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 56
    return-void
.end method

.method public skipRequest(Lcom/htc/htccalendarwidgets/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 59
    return-void
.end method
