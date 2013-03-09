.class public Ljavax/obex/ApplicationParameter$TRIPLET_LENGTH;
.super Ljava/lang/Object;
.source "ApplicationParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/obex/ApplicationParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRIPLET_LENGTH"
.end annotation


# static fields
.field public static final FILTER_LENGTH:B = 0x8t

.field public static final FORMAT_LENGTH:B = 0x1t

.field public static final LISTSTARTOFFSET_LENGTH:B = 0x2t

.field public static final MAXLISTCOUNT_LENGTH:B = 0x2t

.field public static final NEWMISSEDCALLS_LENGTH:B = 0x1t

.field public static final ORDER_LENGTH:B = 0x1t

.field public static final PHONEBOOKSIZE_LENGTH:B = 0x2t

.field public static final SEARCH_ATTRIBUTE_LENGTH:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
