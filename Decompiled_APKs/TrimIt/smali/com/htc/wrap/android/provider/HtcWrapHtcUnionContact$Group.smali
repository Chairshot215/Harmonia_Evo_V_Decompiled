.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Group;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final GROUPS_NAME_ID_COLUMN_INDEX:I = 0x0

.field public static final GROUPS_NAME_NAME_COLUMN_INDEX:I = 0x1

.field public static final GROUP_CONTAINS_PERSON_PROJECTION:[Ljava/lang/String;

.field public static final GROUP_NAME_PROJECTION:[Ljava/lang/String;

.field public static final QUERY_GROUPS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 467
    sget-object v0, Landroid/provider/HtcUnionContact$Group;->QUERY_GROUPS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Group;->QUERY_GROUPS_URI:Landroid/net/Uri;

    .line 469
    sget-object v0, Landroid/provider/HtcUnionContact$Group;->GROUP_CONTAINS_PERSON_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Group;->GROUP_CONTAINS_PERSON_PROJECTION:[Ljava/lang/String;

    .line 471
    sget-object v0, Landroid/provider/HtcUnionContact$Group;->GROUP_NAME_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$Group;->GROUP_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
