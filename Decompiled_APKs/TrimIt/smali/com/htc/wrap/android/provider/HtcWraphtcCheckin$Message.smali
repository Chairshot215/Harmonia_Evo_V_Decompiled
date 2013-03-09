.class public interface abstract Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Message;
.super Ljava/lang/Object;
.source "HtcWraphtcCheckin.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWraphtcCheckin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final Feature:Ljava/lang/String; = "feature"

.field public static final Link:Ljava/lang/String; = "link"

.field public static final Size:Ljava/lang/String; = "size"

.field public static final TABLE_NAME:Ljava/lang/String; = "message"

.field public static final Version:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "content://android.server.htcCheckin/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWraphtcCheckin$Message;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
