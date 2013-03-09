.class public Lcom/htc/provider/HtcCalendar;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcCalendar$AssociatedNotes;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final TAG:Ljava/lang/String; = "HtcCalendar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcCalendar;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
