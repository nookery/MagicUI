import SwiftUI

/// String+Icon 扩展功能演示视图
struct StringIconExtensionDemoView: View {
    var body: some View {
        VStack(spacing: 24) {
            // MARK: - A
            IconSection(title: "A", icons: [
                ("账户", .iconAccountSetting),
                ("活动记录", .iconActivity),
                ("活动记录填充", .iconActivityFill),
                ("添加", .iconAdd),
                ("添加圆形", .iconAddCircle),
                ("添加用户", .iconAddUser),
            ])

            // MARK: - B
            IconSection(title: "B", icons: [
                ("备份", .iconBackup),
                ("备份填充", .iconBackupFill),
                ("备份历史", .iconBackupHistory),
                ("恢复", .iconBackupRestore),
                ("恢复填充", .iconBackupRestoreFill),
                ("电池", .iconBattery),
                ("蓝牙", .iconBluetooth),
                ("加粗", .iconBold),
            ])

            // MARK: - C
            IconSection(title: "C", icons: [
                ("缓存", .iconCacheSetting),
                ("计算器", .iconCalculator),
                ("日历", .iconCalendar),
                ("日历填充", .iconCalendarFill),
                ("日历应用", .iconCalendarApp),
                ("日历应用填充", .iconCalendarAppFill),
                ("图表", .iconChart),
                ("勾选", .iconCheckmark),
                ("勾选简单", .iconCheckmarkSimple),
                ("圆点圆形", .iconDotCircle),
                ("时钟", .iconClock),
                ("时钟填充", .iconClockFill),
                ("时钟应用", .iconClockApp),
                ("时钟应用填充", .iconClockAppFill),
                ("云存储", .iconCloud),
                ("云存储填充", .iconCloudFill),
                ("云下载", .iconCloudDownload),
                ("云禁用", .iconCloudSlash),
                ("云上传", .iconCloudUpload),
                ("代码", .iconCode),
                ("评论", .iconComment),
                ("评论填充", .iconCommentFill),
                ("控制台", .iconConsole),
                ("连接", .iconConnectionSetting),
                ("通讯录", .iconContacts),
                ("通讯录填充", .iconContactsFill),
                ("复制", .iconCopy),
                ("剪切", .iconCut),
            ])

            // MARK: - D
            IconSection(title: "D", icons: [
                ("调试", .iconDebug),
                ("开发者", .iconDeveloperSetting),
                ("二进制文档", .iconDocBinary),
                ("文档", .iconDoc),
                ("文档", .iconDocument),
                ("填充内容", .iconDocumentFill),
                ("填充内容备选", .iconDocumentFillAlt),
                ("下载", .iconDownload),
            ])

            // MARK: - E
            IconSection(title: "E", icons: [
                ("编辑", .iconEdit),
                ("编辑圆形", .iconEditCircle),
                ("编辑填充", .iconEditCircleFill),
                ("邮件", .iconMail),
                ("邮件填充", .iconMailFill),
                ("邮件应用", .iconMailApp),
                ("邮件应用填充", .iconMailAppFill),
                ("均衡器", .iconEqualizer),
                ("错误", .iconError),
            ])

            // MARK: - F
            IconSection(title: "F", icons: [
                ("FaceTime", .iconFaceTime),
                ("FaceTime填充", .iconFaceTimeFill),
                ("快进", .iconForward),
                ("快进填充", .iconForwardEndFill),
                ("前进10秒", .iconGoforward10),
                ("快退", .iconBackward),
                ("快退填充", .iconBackwardEndFill),
                ("后退10秒", .iconGobackward10),
                ("筛选", .iconFilter),
                ("电影", .iconFilm),
                ("访达", .iconFinder),
                ("访达填充", .iconFinderFill),
                ("第一页", .iconFirstPage),
                ("指纹", .iconFingerprint),
                ("指纹填充", .iconFingerprintFill),
                ("文件夹", .iconFolder),
                ("文件夹填充", .iconFolderFill),
                ("字体", .iconFont),
                ("字号", .iconFontSize),
                ("字体颜色", .iconFontColor),
            ])

            // MARK: - G
            IconSection(title: "G", icons: [
                ("齿轮", .iconGear),
                ("地球", .iconGlobe),
            ])

            // MARK: - H
            IconSection(title: "H", icons: [
                ("喜欢", .iconHeart),
                ("喜欢填充", .iconHeartFill),
                ("健康", .iconHealth),
                ("健康填充", .iconHealthFill),
            ])

            // MARK: - I
            IconSection(title: "I", icons: [
                ("iCloud文件夹", .iconICloudFolder),
                ("iCloud下载", .iconICloudDownload),
                ("图片", .iconImageDocument),
                ("插入图片", .iconInsertImage),
                ("信息", .iconInfo),
                ("斜体", .iconItalic),
            ])

            // MARK: - J
            IconSection(title: "J", icons: [
            ])

            // MARK: - K
            IconSection(title: "K", icons: [
            ])

            // MARK: - L
            IconSection(title: "L", icons: [
                ("歌词", .iconLyrics),
                ("定位", .iconLocation),
                ("定位填充", .iconLocationFill),
                ("列表", .iconList),
                ("列表圆形", .iconListCircle),
                ("列表填充", .iconListCircleFill),
                ("左对齐", .iconAlignLeft),
            ])

            // MARK: - M
            IconSection(title: "M", icons: [
                ("地图", .iconMaps),
                ("地图填充", .iconMapsFill),
                ("邮件", .iconMailAlt),
                ("邮件填充", .iconMailFillAlt),
                ("居中对齐", .iconAlignCenter),
                ("质量", .iconQualitySetting),
            ])

            // MARK: - N
            IconSection(title: "N", icons: [
                ("编号列表", .iconNumberList),
                ("数字1填充", .iconNumberCircleFill1),
                ("数字2填充", .iconNumberCircleFill2),
                ("数字3填充", .iconNumberCircleFill3),
            ])

            // MARK: - O
            IconSection(title: "O", icons: [
            ])

            // MARK: - P
            IconSection(title: "P", icons: [
                ("粘贴", .iconPaste),
                ("播放", .iconPlay),
                ("播放填充", .iconPlayFill),
                ("PDF", .iconPDFDocument),
                ("预览", .iconPreview),
                ("预览填充", .iconPreviewFill),
            ])

            // MARK: - Q
            IconSection(title: "Q", icons: [
                ("QuickTime", .iconQuickTime),
                ("QuickTime填充", .iconQuickTimeFill),
                ("全屏", .iconFullscreen),
            ])

            // MARK: - R
            IconSection(title: "R", icons: [
                ("重置", .iconReset),
                ("刷新", .iconRefresh),
                ("刷新圆形", .iconRefreshCircle),
                ("刷新圆形填充", .iconRefreshCircleFill),
                ("双箭头刷新", .iconRefreshAlt),
                ("双箭头刷新圆形", .iconRefreshAltCircle),
                ("双箭头刷新圆形填充", .iconRefreshAltCircleFill),
                ("重新加载", .iconReload),
                ("重新开始", .iconRestart),
                ("提醒事项", .iconReminders),
                ("提醒事项填充", .iconRemindersFill),
                ("只读", .iconReadOnly),
                ("只读填充", .iconReadOnlyFill),
                ("右对齐", .iconAlignRight),
            ])

            // MARK: - S
            IconSection(title: "S", icons: [
                ("Safari", .iconSafari),
                ("Safari填充", .iconSafariFill),
                ("删除", .iconTrash),
                ("删除填充", .iconTrashFill),
                ("删除线", .iconStrikethrough),
                ("删除用户", .iconRemoveUser),
                ("设置", .iconSettings),
                ("设置填充", .iconSettingsFill),
                ("上传", .iconUpload),
                ("搜索", .iconSearch),
                ("随机播放", .iconShuffle),
                ("双向对齐", .iconAlignJustify),
                ("双箭头", .iconSquareOnCircle),
                ("速度计", .iconSpeedometer),
                ("中速", .iconSpeedometerMedium),
                ("高速", .iconSpeedometerHigh),
                ("四方", .iconSquare),
                ("虚线正方形", .iconSquareDashed),
                ("分享", .iconShare),
                ("分享备选", .iconShareAlt),
                ("视频", .iconVideoDocument),
                ("状态", .iconStatusSetting),
                ("停止", .iconStop),
                ("股市", .iconStocks),
                ("股市填充", .iconStocksFill),
                ("同步", .iconSync),
                ("同步圆形", .iconSyncCircle),
                ("同步圆形填充", .iconSyncCircleFill),
                ("系统设置", .iconSystemSettings),
                ("系统设置填充", .iconSystemSettingsFill),
            ])

            // MARK: - T
            IconSection(title: "T", icons: [
                ("表格", .iconTable),
                ("表格填充", .iconTableFill),
                ("表格合并", .iconTableMerge),
                ("表格分割", .iconTableSplit),
                ("文本", .iconTextDocument),
                ("TextEdit", .iconTextEdit),
                ("TextEdit填充", .iconTextEditFill),
                ("主题", .iconThemeSetting),
                ("计时器", .iconTimer),
                ("计时器填充", .iconTimerFill),
                ("音频", .iconAudioDocument),
                ("输入设备", .iconAudioInput),
                ("输出设备", .iconAudioOutput),
            ])

            // MARK: - U
            IconSection(title: "U", icons: [
            ])

            // MARK: - V
            IconSection(title: "V", icons: [
                ("版本", .iconVersionInfo),
            ])

            // MARK: - W
            IconSection(title: "W", icons: [
                ("WiFi", .iconWiFi),
                ("钱包", .iconWallet),
                ("钱包填充", .iconWalletFill),
                ("天气", .iconWeather),
                ("天气填充", .iconWeatherFill),
            ])

            // MARK: - X
            IconSection(title: "X", icons: [
                ("Xcode", .iconXcode),
                ("Xcode填充", .iconXcodeFill),
                ("下划线", .iconUnderline),
                ("压缩", .iconZipDocument),
                ("减少", .iconMinus),
                ("减少圆形", .iconMinusCircle),
                ("项目符号", .iconBulletList),
                ("信号", .iconNotification),
                ("信号填充", .iconNotificationFill),
                ("信号设置", .iconNotificationSetting),
                ("消息", .iconMessage),
                ("消息填充", .iconMessageFill),
                ("信息", .iconMessages),
                ("信息填充", .iconMessagesFill),
                ("退出全屏", .iconExitFullscreen),
                ("写", .iconPersonGroup),
                ("写填充", .iconPersonGroupFill),
                ("写禁用", .iconPersonGroupSlash),
                ("相片", .iconPhotos),
                ("相片填充", .iconPhotosFill),
                ("音符", .iconMusicNote),
                ("音符圆形", .iconMusicNoteCircle),
                ("音符列表", .iconMusicNoteList),
                ("新闻", .iconMusicLibrary),
                ("新闻填充", .iconMusicLibraryFill),
                ("新闻文件夹", .iconMusicFolder),
                ("心", .iconMusic),
                ("心填充", .iconMusicFill),
                ("信号", .iconLog),
                ("形状", .iconPersonCropCircle),
            ])

            // MARK: - Y
            IconSection(title: "Y", icons: [
            ])

            // MARK: - Z
            IconSection(title: "Z", icons: [
                ("占位", .iconPlaceholder),
                ("正方形", .iconSquare),
                ("虚线正方形", .iconSquareDashed),
                ("增加缩进", .iconIndentIncrease),
                ("减少缩进", .iconIndentDecrease),
                ("音量", .iconVolume),
                ("音量填充", .iconVolumeFill),
                ("静音", .iconMute),
                ("音量调节", .iconVolumeSlider),
                ("音量设置", .iconVolumeSetting),
                ("用户", .iconUser),
                ("用户填充", .iconUserFill),
                ("用户组", .iconPersonGroup),
                ("用户组填充", .iconPersonGroupFill),
                ("用户组禁用", .iconPersonGroupSlash),
                ("语音备忘录", .iconVoiceMemos),
                ("语音备忘录填充", .iconVoiceMemosFill),
                ("邮件", .iconMail),
                ("邮件填充", .iconMailFill),
                ("邮件应用", .iconMailApp),
                ("邮件应用填充", .iconMailAppFill),
                ("音乐", .iconMusic),
                ("音乐填充", .iconMusicFill),
                ("艺术家", .iconArtist),
                ("专辑", .iconAlbum),
                ("密码", .iconPasswords),
                ("密码填充", .iconPasswordsFill),
                ("链接", .iconLink),
                ("链接圆形", .iconLinkCircle),
                ("超链接", .iconHyperlink),
                ("背景色", .iconBackgroundColor),
                ("标尺", .iconRuler),
                ("备忘录", .iconNotes),
                ("备忘录填充", .iconNotesFill),
                ("关闭", .iconClose),
                ("更多", .iconMore),
                ("家庭", .iconHome),
                ("家庭填充", .iconHomeFill),
                ("快捷指令", .iconShortcuts),
                ("快捷指令填充", .iconShortcutsFill),
                ("警告", .iconWarning),
                ("画笔", .iconPaintbrush),
                ("调色板", .iconPaintpalette),
                ("清除格式", .iconClearFormat),
                ("箭头循环", .iconArrowClockwise),
                ("向上箭头圆形", .iconArrowUpCircle),
                ("上一页", .iconPreviousPage),
                ("下一页", .iconNextPage),
                ("上一页圆形", .iconPreviousPageCircle),
                ("下一页圆形", .iconNextPageCircle),
                ("上一页圆形填充", .iconPreviousPageCircleFill),
                ("下一页圆形填充", .iconNextPageCircleFill),
                ("最后一页", .iconLastPage),
                ("飞行模式", .iconAirplane),
                ("终端", .iconTerminal),
                ("终端填充", .iconTerminalFill),
                ("Apple终端", .iconAppleTerminal),
                ("终端应用", .iconTerminalApp),
                ("工具栏", .iconToolbar),
                ("工具栏填充", .iconToolbarFill),
                ("顶部工具栏", .iconTopToolbar),
                ("顶部工具栏填充", .iconTopToolbarFill),
            ])
        }
        .padding()
        .frame(width: 600)
    }
}

/// 图标分类展示组件
struct IconSection: View {
    let title: String
    let icons: [(String, String)]

    var body: some View {
        if !icons.isEmpty {
            VStack(alignment: .leading, spacing: 12) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.secondary)

                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 60)),
                ], spacing: 16) {
                    ForEach(icons, id: \.0) { name, systemName in
                        IconDemoItem(name: name, systemName: systemName)
                    }
                }
                .padding()
                .background(.background.secondary)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
    }
}

/// 图标演示项
struct IconDemoItem: View {
    let name: String
    let systemName: String

    var body: some View {
        VStack {
            Image(systemName: systemName)
                .font(.title2)
                .frame(height: 30)
            Text(name)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview("图标演示") {
    NavigationStack {
        StringIconExtensionDemoView()
    }
}
