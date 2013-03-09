.class public Lcom/android/syncml/providers/SyncML$ServerInfo;
.super Ljava/lang/Object;
.source "SyncML.java"

# interfaces
.implements Lcom/android/syncml/providers/SyncML$ServerInfoColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/syncml/providers/SyncML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerInfo"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/syncml-serverinfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/syncml-serverinfo"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 424
    const-string v0, "content://syncml/serverinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/syncml/providers/SyncML$ServerInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
