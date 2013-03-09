.class Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
.super Ljava/lang/Object;
.source "MailShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutBitmap"
.end annotation


# instance fields
.field public bmp:Landroid/graphics/Bitmap;

.field public canRecycled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailShortcut$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;-><init>()V

    return-void
.end method
