.class public final Lcom/futuredial/pim/Calendar$Attendees;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/futuredial/pim/BaseColumns;
.implements Lcom/futuredial/pim/Calendar$AttendeesColumns;
.implements Lcom/futuredial/pim/Calendar$EventsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attendees"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/futuredial/pim/FDUri;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "attendees"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
