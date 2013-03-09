.class public Lcom/htc/android/mail/provider/AttachmentProvider$AttachmentProviderColumns;
.super Ljava/lang/Object;
.source "AttachmentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/provider/AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentProviderColumns"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final SIZE:Ljava/lang/String; = "_size"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _MIME_TYPE:Ljava/lang/String; = "_mime_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
