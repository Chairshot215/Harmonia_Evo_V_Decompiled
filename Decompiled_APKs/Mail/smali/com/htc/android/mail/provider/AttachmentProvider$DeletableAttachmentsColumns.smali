.class public Lcom/htc/android/mail/provider/AttachmentProvider$DeletableAttachmentsColumns;
.super Ljava/lang/Object;
.source "AttachmentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/provider/AttachmentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletableAttachmentsColumns"
.end annotation


# static fields
.field public static final ICON:Ljava/lang/String; = "_icon"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NAME:Ljava/lang/String; = "_filename"

.field public static final PATH:Ljava/lang/String; = "_filepath"

.field public static final SIZE:Ljava/lang/String; = "_filesize"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
