.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailboxInfo"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public decodename:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public parentid:Ljava/lang/String;

.field public serverfolder:Ljava/lang/String;

.field public serverid:Ljava/lang/String;

.field public shortname:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public undecodename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
