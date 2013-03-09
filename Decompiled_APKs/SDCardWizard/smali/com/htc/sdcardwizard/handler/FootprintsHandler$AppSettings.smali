.class final Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;
.super Ljava/lang/Object;
.source "FootprintsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/FootprintsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppSettings"
.end annotation


# instance fields
.field public final deleteAction:Ljava/lang/String;

.field public final infoUri:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "infoUri"
    .parameter "deleteAction"
    .parameter "packageName"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;->infoUri:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;->deleteAction:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;->packageName:Ljava/lang/String;

    .line 72
    return-void
.end method
