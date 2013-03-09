.class public Lcom/htc/launcher/ApplicationManager$CustomizeAppInfo;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizeAppInfo"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field order:I

.field packageName:Ljava/lang/String;

.field priority:I

.field widgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
