.class public Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;
.super Ljava/lang/Object;
.source "GroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/GroupDialogPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupItem"
.end annotation


# instance fields
.field public groupId:I

.field public groupIsReadOnly:I

.field public groupName:Ljava/lang/String;

.field public groupShouldSync:I

.field public groupSystemId:Ljava/lang/String;

.field public isChecked:Z

.field public sortOrder:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/htccontacts/app/GroupDialogPicker$GroupItem;->groupName:Ljava/lang/String;

    return-object v0
.end method
