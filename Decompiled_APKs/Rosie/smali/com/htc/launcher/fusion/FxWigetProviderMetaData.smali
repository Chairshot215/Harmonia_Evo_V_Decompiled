.class public Lcom/htc/launcher/fusion/FxWigetProviderMetaData;
.super Ljava/lang/Object;
.source "FxWigetProviderMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/fusion/FxWigetProviderMetaData$FxWidgetTableMedata;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.home.personalize.fusionwidget.FxWidgetProvider"

.field public static final DATABASE_NAME:Ljava/lang/String; = "fxwidget.db"

.field public static final DATABASE_TABLE_NAME:Ljava/lang/String; = "fxwidgets"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
