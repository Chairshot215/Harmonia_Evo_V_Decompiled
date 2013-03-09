.class public Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactDetailUpdatesAndEventsActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ISNBaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventAdapter"
.end annotation


# instance fields
.field protected mMaxShowingEntries:I

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    .line 936
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 933
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mMaxShowingEntries:I

    .line 937
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 988
    .local v2, tagObj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v6, v2, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;

    if-nez v6, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;

    .line 992
    .local v0, cache:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget v6, v6, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventTime:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 993
    .local v3, time:J
    iget-object v6, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget v6, v6, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventType:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 995
    .local v5, type:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/htc/util/contacts/ContactsUtility;->getRelativeDayString(JJ)Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, relativeDayString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 997
    iget-object v6, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->timeView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1002
    :goto_1
    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1003
    iget-object v6, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->primaryView:Landroid/widget/TextView;

    const v7, 0x7f0a0124

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1010
    :cond_2
    :goto_2
    iget-object v6, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->secondaryView:Landroid/widget/TextView;

    const v7, 0x7f0a01ea

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 999
    :cond_3
    iget-object v6, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->timeView:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1004
    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 1005
    iget-object v6, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->primaryView:Landroid/widget/TextView;

    const v7, 0x7f0a0125

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1006
    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1007
    iget-object v6, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->primaryView:Landroid/widget/TextView;

    const v7, 0x7f0a0126

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 972
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mCursor:Landroid/database/Cursor;

    .line 954
    .local v0, tmpCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 955
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 956
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 958
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mCursor:Landroid/database/Cursor;

    .line 959
    if-eqz p1, :cond_2

    .line 960
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 961
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 962
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mRowIDColumn:I

    .line 963
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mDataValid:Z

    .line 965
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 967
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mRowIDColumn:I

    .line 968
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mDataValid:Z

    .line 970
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public getActiveUserRowId()J
    .locals 2

    .prologue
    .line 1068
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1037
    if-nez p1, :cond_0

    .line 1039
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030056

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1040
    new-instance v3, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v4, "event"

    invoke-direct {v3, v4}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1044
    :cond_0
    const v3, 0x7f07001f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1045
    .local v1, root:Landroid/view/View;
    const v3, 0x102000d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1046
    .local v0, progressView:Landroid/view/View;
    const v3, 0x7f0700dc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1048
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1049
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_2

    .line 1050
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1058
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 1059
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 1061
    :cond_1
    return-object p1

    .line 1054
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    const v3, 0x7f0a01e9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getLoginView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1019
    if-nez p1, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x209006a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1021
    new-instance v3, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v4, "update"

    invoke-direct {v3, v4}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1024
    :cond_0
    const v3, 0x202001a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1025
    .local v0, photoView:Landroid/widget/ImageView;
    const v3, 0x2020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1026
    .local v1, primaryView:Landroid/widget/TextView;
    const v3, 0x2020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1028
    .local v2, secondaryView:Landroid/widget/TextView;
    const v3, 0x208024b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1029
    const v3, 0x7f0a01df

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1030
    const v3, 0x7f0a01e3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    return-object p1
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mMaxShowingEntries:I

    return v0
.end method

.method public getNamePattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1097
    if-nez p1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1099
    new-instance v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v2, "update"

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1101
    :cond_0
    const v1, 0x2020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1102
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 1103
    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 1108
    :cond_1
    return-object p1
.end method

.method public isClientLogin()Z
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x1

    return v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x1

    return v0
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x1

    return v0
.end method

.method public launchLinkFriend()V
    .locals 0

    .prologue
    .line 1076
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 975
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 976
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->marginListItemLayout(Landroid/view/View;)V

    .line 977
    new-instance v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    const-string v3, "event"

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Ljava/lang/String;)V

    .line 978
    .local v0, cache:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;
    const v2, 0x2020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->primaryView:Landroid/widget/TextView;

    .line 979
    const v2, 0x2020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->secondaryView:Landroid/widget/TextView;

    .line 980
    const v2, 0x2020015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->timeView:Landroid/widget/TextView;

    .line 981
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 983
    return-object v1
.end method

.method public onEmptyViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1086
    return-void
.end method

.method public onLinkFriendEntryClick(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1079
    .local p1, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onLoginViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1065
    return-void
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1112
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mMaxShowingEntries:I

    .line 1113
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1116
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 1120
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxShowingEntries(I)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 940
    iput p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->mMaxShowingEntries:I

    .line 941
    return-void
.end method
