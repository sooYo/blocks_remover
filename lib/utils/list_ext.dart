/// list_ext
/// flame_learn
///
/// Created by sooyo on 2025/1/14
/// Copyright (c) 2025 Heyooh Technology Co.,Ltd. All rights reserved.
///

extension SafeListExt<T> on List<T> {
  T? safe({required int at}) => at >= 0 && at < length ? this[at] : null;
}
