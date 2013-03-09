.class public interface abstract Landroid/provider/DrmStore$Jar;
.super Ljava/lang/Object;
.source "DrmStore.java"

# interfaces
.implements Landroid/provider/DrmStore$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Jar"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://drm/jar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/DrmStore$Jar;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
