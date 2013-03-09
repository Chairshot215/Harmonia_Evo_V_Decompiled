.class Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;
.super Ljava/lang/Object;
.source "ContactGlanceSelectDefaultActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryResult"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field displayName:Ljava/lang/String;

.field existContact:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1053
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$QueryResult;-><init>()V

    return-void
.end method
