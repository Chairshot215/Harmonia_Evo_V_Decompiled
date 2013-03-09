.class public final Lcom/htc/launcher/fusion/FxWigetProviderMetaData$FxWidgetTableMedata;
.super Ljava/lang/Object;
.source "FxWigetProviderMetaData.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/fusion/FxWigetProviderMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FxWidgetTableMedata"
.end annotation


# static fields
.field public static final CONTENT_ITEM:Ljava/lang/String; = "vnd.android.cursor.item/vnd.htc.fxrosiewidget"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.htc.fxrosiewidget"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final TABLE_NAME:Ljava/lang/String; = "fxwidgets"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.htc.home.personalize.fusionwidget.FxWidgetProvider/fxwidgets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/fusion/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
