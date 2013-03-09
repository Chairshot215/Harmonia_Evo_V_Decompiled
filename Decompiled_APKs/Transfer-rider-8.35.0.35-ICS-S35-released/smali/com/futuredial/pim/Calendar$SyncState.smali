.class public final Lcom/futuredial/pim/Calendar$SyncState;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncState"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "syncstate"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1154
    sget-object v0, Lcom/futuredial/pim/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "syncstate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
