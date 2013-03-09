.class Lcom/android/browser/BrowserBackupAgent$Bookmark;
.super Ljava/lang/Object;
.source "BrowserBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bookmark"
.end annotation


# instance fields
.field public created:J

.field public date:J

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public visits:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
